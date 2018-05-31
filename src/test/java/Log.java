import java.io.BufferedReader;
import java.io.FileReader;
import java.io.LineNumberReader;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by clg on 2018/5/28.
 */
public class Log {


    public static void main(String[] args) throws Exception{

        FileReader fileReader = new FileReader("E:\\temp\\20180528wspcpu使用异常日志\\debug - 副本.log");
        BufferedReader br = new BufferedReader(fileReader);


        Map<String,List<LogEntry>> result = new HashMap(100000);

        String str = null;
        while((str = br.readLine()) != null) {
            if(!str.matches("^\\[.*\\] \\d{2}:\\d{2}:\\d{2}\\.\\d{3}.*$")){
                continue;
            }
            int sessionStart = str.indexOf('[');
            int sessionEnd = str.indexOf(']');

            int threadStart = str.indexOf('[',sessionEnd);
            int threadEnd = str.indexOf(']',threadStart);

            if(sessionStart==-1||sessionEnd==-1||threadStart==-1||threadEnd==-1){
                continue;
            }

            LogEntry logEntry = new LogEntry();
            logEntry.session = str.substring(sessionStart+1,sessionEnd);
            logEntry.time = str.substring(sessionEnd+1,threadStart);
            logEntry.thread = str.substring(threadStart+1,threadEnd);
            logEntry.log = str.substring(threadEnd+1);

            List<LogEntry> list = result.get(logEntry.session);
            if(list==null){
                list = new ArrayList();
                result.put(logEntry.session,list);
            }
            list.add(logEntry);
        }

        System.out.println("session size:"+result.size());

        //print large session
        Collection values = result.values();

        Object[] arys = values.toArray();
        /*Arrays.sort(arys, new Comparator<Object>() {
            @Override
            public int compare(Object o1, Object o2) {
                ArrayList a1 = (ArrayList)o1;
                ArrayList a2 = (ArrayList)o2;
                if(a1.size()==a2.size()){
                    return 0;
                }
                else if(a1.size()>a2.size()){
                    return -1;
                }else{
                    return 1;
                }
            }
        });*/

        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("hh:mm:ss.SSS");


        System.out.println("按照线程日志行数排序：");
        for(int i=0;i<arys.length;i++){
            ArrayList<LogEntry> list = ((ArrayList<LogEntry>) arys[i]);
            System.out.println(list.get(0).session+",line size:"+list.size());

            TreeSet<String> threadSet = new TreeSet();
            LogEntry thread = null;
            for(int j=0;j<list.size();j++){
                LogEntry l = list.get(j);
                threadSet.add(l.thread);

                if(thread==null){
                    thread = l;
                }
                else if(!thread.thread.equals(l.thread)){
                    Date d1 = df.parse(thread.time);
                    Date d2 = df.parse(list.get(j-1).time);
                    long time = d2.getTime()-d1.getTime();
                    if(time/1000>10){
                        System.out.println(thread.session+","+thread.thread+",["+thread.time+"-"+list.get(j-1).time+"],线程耗时："+time/1000+"s");
                    }
                    thread = l;
                }

            }
            System.out.println(list.get(0).session+",thread count:"+threadSet.size());
        }
        br.close();
        fileReader.close();
    }



    public static class LogEntry{
        public String session;
        public String time;
        public String thread;
        public String log;

    }

    public static void main1(String[] args) throws Exception{
        SimpleDateFormat df = new SimpleDateFormat("hh:mm:ss.SSS");
        FileReader fileReader = new FileReader("E:\\temp\\20180528wspcpu使用异常日志\\server.log");
        LineNumberReader br = new LineNumberReader(fileReader);


        FileReader fileReader2 = new FileReader("E:\\temp\\20180528wspcpu使用异常日志\\server.log");
        LineNumberReader br2 = new LineNumberReader(fileReader2);

        int charSize = 0;
        String str = null;
        while((str = br.readLine()) != null) {
            charSize+=str.length()+1;

            if(!str.matches(".+\\[.+\\] \\d{2}:\\d{2}:\\d{2}\\.\\d{3} \\[.+\\].*==>  Preparing.*")){
                continue;
            }

            int sessionStart = str.indexOf('[',54);
            int sessionEnd = str.indexOf(']',sessionStart);
            int threadStart = str.indexOf('[',sessionEnd);
            int threadEnd = str.indexOf(']',threadStart);

            if(sessionStart==-1||sessionEnd==-1||threadStart==-1||threadEnd==-1){
                continue;
            }

            String sessionId = str.substring(sessionStart+1,sessionEnd);
            String threadId = str.substring(threadStart+1,threadEnd);
            String time = str.substring(sessionEnd+1,threadStart);

            if(sessionId.equals("")){
                continue;
            }



            int maxLine = 0;
            String str2 = null;
            br2.mark(1);
            br2.reset();
            br2.skip(charSize);

            boolean isFindNext = false;
            while((str2 = br2.readLine()) != null) {
                maxLine++;
                if(!str2.matches(".+\\[.+\\] \\d{2}:\\d{2}:\\d{2}\\.\\d{3} \\[.+\\].*<==.*")){
                    continue;
                }
                int sessionStart2 = str2.indexOf('[',54);
                int sessionEnd2 = str2.indexOf(']',sessionStart);
                int threadStart2 = str2.indexOf('[',sessionEnd);
                int threadEnd2 = str2.indexOf(']',threadStart);

                if(sessionStart2==-1||sessionEnd2==-1||threadStart2==-1||threadEnd2==-1){
                    continue;
                }

                String sessionId2 = str2.substring(sessionStart+1,sessionEnd);
                String threadId2 = str2.substring(threadStart+1,threadEnd);
                String time2 = str2.substring(sessionEnd+1,threadStart);

                if(sessionId2.equals("")){
                    continue;
                }
                if(sessionId.equals(sessionId2)&&threadId.equals(threadId2)){
                    try {
                        Date d1 = df.parse(time);
                        Date d2 = df.parse(time2);
                        long timeLong = d2.getTime() - d1.getTime();
                        if (timeLong / 1000 > 10) {
                            System.out.println(sessionId + "," + threadId + ",[" + time + "-" + time2 + "],线程耗时：" + timeLong / 1000 + "s");
                        }
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                    isFindNext = true;
                    break;
                }
            }
            if(!isFindNext){
                System.out.println(sessionId + "," + threadId + ",[" + time + "-"  + "], not found next");
            }
        }


        br.close();
        br2.close();
        fileReader.close();
    }
}
