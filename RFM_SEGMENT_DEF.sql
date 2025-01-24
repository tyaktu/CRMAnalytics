/*
Tahsin Bekir YAKTU 
https://github.com/tyaktu
https://medium.com/@tahsinyaktu
www.linkedin.com/in/tby1
*/

CREATE TABLE RFM_DEF(
		[ScoreID] [int] IDENTITY(1,1) NOT NULL,
		[SegmentID] int NULL,
		[Segment] [varchar](50) NULL,
		[Score] [int] NULL
	) ON [PRIMARY]


-- Champions
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(1, 'Champions', '555'),
(1, 'Champions', '554'),
(1, 'Champions', '544'),
(1, 'Champions', '545'),
(1, 'Champions', '454'),
(1, 'Champions', '455'),
(1, 'Champions', '445');

-- Loyal
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(2, 'Loyal', '543'),
(2, 'Loyal', '444'),
(2, 'Loyal', '435'),
(2, 'Loyal', '355'),
(2, 'Loyal', '354'),
(2, 'Loyal', '345'),
(2, 'Loyal', '344'),
(2, 'Loyal', '335');

-- Potential Loyalist
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(3, 'Potential Loyalist', '553'),
(3, 'Potential Loyalist', '551'),
(3, 'Potential Loyalist', '552'),
(3, 'Potential Loyalist', '541'),
(3, 'Potential Loyalist', '542'),
(3, 'Potential Loyalist', '533'),
(3, 'Potential Loyalist', '532'),
(3, 'Potential Loyalist', '531'),
(3, 'Potential Loyalist', '452'),
(3, 'Potential Loyalist', '451'),
(3, 'Potential Loyalist', '442'),
(3, 'Potential Loyalist', '441'),
(3, 'Potential Loyalist', '431'),
(3, 'Potential Loyalist', '453'),
(3, 'Potential Loyalist', '433'),
(3, 'Potential Loyalist', '432'),
(3, 'Potential Loyalist', '423'),
(3, 'Potential Loyalist', '353'),
(3, 'Potential Loyalist', '352'),
(3, 'Potential Loyalist', '351'),
(3, 'Potential Loyalist', '342'),
(3, 'Potential Loyalist', '341'),
(3, 'Potential Loyalist', '333'),
(3, 'Potential Loyalist', '323');

-- New Customers
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(4, 'New Customers', '512'),
(4, 'New Customers', '511'),
(4, 'New Customers', '422'),
(4, 'New Customers', '421'),
(4, 'New Customers', '412'),
(4, 'New Customers', '411'),
(4, 'New Customers', '311');

-- Promising
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(5, 'Promising', '525'),
(5, 'Promising', '524'),
(5, 'Promising', '523'),
(5, 'Promising', '522'),
(5, 'Promising', '521'),
(5, 'Promising', '515'),
(5, 'Promising', '514'),
(5, 'Promising', '513'),
(5, 'Promising', '425'),
(5, 'Promising', '424'),
(5, 'Promising', '413'),
(5, 'Promising', '414'),
(5, 'Promising', '415'),
(5, 'Promising', '315'),
(5, 'Promising', '314'),
(5, 'Promising', '313');

-- Need Attention
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(6, 'Need Attention', '535'),
(6, 'Need Attention', '534'),
(6, 'Need Attention', '443'),
(6, 'Need Attention', '434'),
(6, 'Need Attention', '343'),
(6, 'Need Attention', '334'),
(6, 'Need Attention', '325'),
(6, 'Need Attention', '324');

-- About To Sleep
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(7, 'About To Sleep', '331'),
(7, 'About To Sleep', '321'),
(7, 'About To Sleep', '312'),
(7, 'About To Sleep', '221'),
(7, 'About To Sleep', '213'),
(7, 'About To Sleep', '231'),
(7, 'About To Sleep', '241'),
(7, 'About To Sleep', '251');

-- Cannot Lose Them But Losing
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(8, 'Cannot Lose Them But Losing', '155'),
(8, 'Cannot Lose Them But Losing', '154'),
(8, 'Cannot Lose Them But Losing', '144'),
(8, 'Cannot Lose Them But Losing', '214'),
(8, 'Cannot Lose Them But Losing', '215'),
(8, 'Cannot Lose Them But Losing', '115'),
(8, 'Cannot Lose Them But Losing', '114'),
(8, 'Cannot Lose Them But Losing', '113');

-- At Risk
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(9, 'At Risk', '255'),
(9, 'At Risk', '254'),
(9, 'At Risk', '245'),
(9, 'At Risk', '244'),
(9, 'At Risk', '253'),
(9, 'At Risk', '252'),
(9, 'At Risk', '243'),
(9, 'At Risk', '242'),
(9, 'At Risk', '235'),
(9, 'At Risk', '234'),
(9, 'At Risk', '225'),
(9, 'At Risk', '224'),
(9, 'At Risk', '153'),
(9, 'At Risk', '152'),
(9, 'At Risk', '145'),
(9, 'At Risk', '143'),
(9, 'At Risk', '142'),
(9, 'At Risk', '135'),
(9, 'At Risk', '134'),
(9, 'At Risk', '133'),
(9, 'At Risk', '125'),
(9, 'At Risk', '124');

-- Hibernating Customers
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(10, 'Hibernating Customers', '332'),
(10, 'Hibernating Customers', '322'),
(10, 'Hibernating Customers', '233'),
(10, 'Hibernating Customers', '232'),
(10, 'Hibernating Customers', '223'),
(10, 'Hibernating Customers', '222'),
(10, 'Hibernating Customers', '132'),
(10, 'Hibernating Customers', '123'),
(10, 'Hibernating Customers', '122'),
(10, 'Hibernating Customers', '212'),
(10, 'Hibernating Customers', '211');

-- Losing But Engaged
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(11, 'Losing But Engaged', '111'),
(11, 'Losing But Engaged', '112'),
(11, 'Losing But Engaged', '121'),
(11, 'Losing But Engaged', '131'),
(11, 'Losing But Engaged', '141'),
(11, 'Losing But Engaged', '151');

-- Lost Customers
INSERT INTO RFM_DEF ([SegmentID] ,Segment, Score)
VALUES
(12, 'Lost Customers', '111'),
(12, 'Lost Customers', '112'),
(12, 'Lost Customers', '121'),
(12, 'Lost Customers', '131'),
(12, 'Lost Customers', '141'),
(12, 'Lost Customers', '151');
