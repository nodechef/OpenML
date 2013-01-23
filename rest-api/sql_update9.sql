DROP TABLE `task_set`;
DROP TABLE `set`;
DROP TABLE `task`;

CREATE TABLE IF NOT EXISTS `task_type` (
  `ttid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `author` varchar(128) NOT NULL,
  `contributors` text,
  `date` date NOT NULL,
  PRIMARY KEY (`ttid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `task_type_input` (
  `ttid` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `data_type` varchar(128) NOT NULL,
  `format` varchar(128) NOT NULL,
  PRIMARY KEY (`ttid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `task_type_parameter` (
  `ttid` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `data_type` varchar(128) NOT NULL,
  `allowed_values` text NOT NULL,
  `required` ENUM(TRUE, FALSE) NOT NULL,
  `dependency` text NOT NULL
  PRIMARY KEY (`ttid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `task_type_output` (
  `ttid` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `data_type` varchar(128) NOT NULL,
  `format` varchar(128) NOT NULL,
  `should_upload` enum('true','false') NOT NULL,
  PRIMARY KEY (`ttid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS`task` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `ttid` int(10) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1; 

