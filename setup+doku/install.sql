### Create the table 'oxcarriers

CREATE TABLE IF NOT EXISTS `oxcarriers` (
    `OXID` char(32) COLLATE latin1_general_ci NOT NULL,
    `OXSHOPID` char(32) COLLATE latin1_general_ci NOT NULL,
    `OXACTIVE` tinyint(1) NOT NULL DEFAULT '0',
    `OXTITLE` char(128) COLLATE latin1_general_ci NOT NULL,
    `OXTITLE_1` char(128) COLLATE latin1_general_ci NOT NULL,
    `OXSORT` int(11) NOT NULL,
    `OXSHORTDESC` varchar(255) COLLATE latin1_general_ci NOT NULL,
    `OXSHORTDESC_1` varchar(255) COLLATE latin1_general_ci NOT NULL,
    `OXICON` varchar(128) COLLATE latin1_general_ci NOT NULL,
    `OXCARRIERURL` varchar(255) COLLATE latin1_general_ci NOT NULL,
    `OXTIMESTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`OXID`),
    KEY `OXSHOPID` (`OXSHOPID`,`OXACTIVE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


### Add OXTRACKADR to oxorder table

ALTER TABLE `oxorder` ADD `OXCARRIERURL` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL ;
ALTER TABLE `oxorder` ADD `OXCARRIERID` CHAR( 32 ) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL ;


### add some carriers
INSERT INTO `oxcarriers` (`OXID`, `OXSHOPID`, `OXACTIVE`, `OXTITLE`, `OXTITLE_1`, `OXSORT`, `OXSHORTDESC`, `OXSHORTDESC_1`, `OXICON`, `OXCARRIERURL`, `OXTIMESTAMP`) VALUES('98a73994e57acabbe830d6771c685104', 'oxbaseshop', 1, 'DPD', '', 20, '      ', '', '', 'https://tracking.dpd.de/cgi-bin/delistrack?typ=32&lang=de&pknr=', '2014-03-11 17:28:16');
INSERT INTO `oxcarriers` (`OXID`, `OXSHOPID`, `OXACTIVE`, `OXTITLE`, `OXTITLE_1`, `OXSORT`, `OXSHORTDESC`, `OXSHORTDESC_1`, `OXICON`, `OXCARRIERURL`, `OXTIMESTAMP`) VALUES('51f2c860d5d9d321aa13e1d688206da7', 'oxbaseshop', 1, 'DHL', '', 10, '  ', '', '', 'http://nolp.dhl.de/nextt-online-public/set_identcodes.do?&idc=', '2014-03-11 17:28:09');
INSERT INTO `oxcarriers` (`OXID`, `OXSHOPID`, `OXACTIVE`, `OXTITLE`, `OXTITLE_1`, `OXSORT`, `OXSHORTDESC`, `OXSHORTDESC_1`, `OXICON`, `OXCARRIERURL`, `OXTIMESTAMP`) VALUES('f692d093c2f7e937782beb428bf0122d', 'oxbaseshop', 1, 'Hermes', '', 30, '  ', '', '', 'https://tracking.hermesworld.com/?traceViaShipmentId=Sendung+verfolgen&TrackID=', '2014-03-11 17:28:22');


/*
Next Line: currently not used
*/
#INSERT INTO `oxconfigdisplay` (`OXID`, `OXCFGMODULE`, `OXCFGVARNAME`, `OXGROUPING`, `OXVARCONSTRAINT`, `OXPOS`) VALUES
#(md5('carrier sCarrierIconSize'), 'theme:azure', 'sCarrierIconSize', 'images', '', 1);

#INSERT INTO `oxconfig` (`OXID`, `OXSHOPID`, `OXMODULE`, `OXVARNAME`, `OXVARTYPE`, `OXVARVALUE`) VALUES
#(md5('carrier sCarrierIconSize'), 'oxbaseshop', 'theme:azure', 'sCarrierIconSize', 'str', 0x8064a213b1);

#INSERT INTO `oxconfig` (`OXID`, `OXSHOPID`, `OXMODULE`, `OXVARNAME`, `OXVARTYPE`, `OXVARVALUE`) VALUES
#(md5('carrier sCarrierIconSize'), 'oxbaseshop', 'theme:mobile', 'sCarrierIconSize', 'str', 0x8064a213b1);