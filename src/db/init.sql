CREATE TABLE menu (id varchar(32) NOT NULL, name varchar(64), module varchar(64), code varchar(64), PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE menu_resource (menu_id varchar(32), url varchar(256)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE role (id varchar(32) NOT NULL, code varchar(64), name varchar(64), description varchar(256), PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE role_menu (role_id varchar(32), menu_id varchar(32)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE user_role (user_id varchar(32), role_id varchar(32)) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `dept_id` varchar(32) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE dept (id varchar(32) NOT NULL, parent varchar(32), name varchar(64), code varchar(64), position int, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO dept (id, parent, name, code, position) VALUES ('1', '#', '组织结构', 'ROOT', 0);
INSERT INTO dept (id, parent, name, code, position) VALUES ('2', '1', '测试机构', null, null);
