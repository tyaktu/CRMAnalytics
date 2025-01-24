# CRMAnalytics

SQL ile RFM Müşteri Segmentasyonu
Bir işletmenin müşterilerinin hızlandırılmış şekilde kapıdan içeri girişlerini izlediğinizi hayal edin. Her bir müşteri geliyor, bir şeyler alıyor ve çıkıyor, kimin ilk gelişi, kim en iyi müşterimiz, kim sık geliyor ama tüm ihtiyacını buradan karşılamıyor, yeni yeni alışmaya başlıyor, kimi kaybetmek üzereyiz ve kimin son alışverişi bundan sonra gelmeyecek.
Nasıl kategorize edeceğiz ve her bir kategoriye gerekli hassasiyeti önemi göstereceğiz? Veri tabanlarımızda işgalci olarak yatan verileri birer hazineye dönüştürmek için kullanacağımız tam bu sorulara yanıt olacak bir hesaplama yöntemi var RFM Segmentasyonu başka bir isimle Müşteri Segmentasyonu.
Müşterileri ilgili analiz dönemi içerisinde 3 ayrı veriye bakarak 1 ile 5 arası skorlayarak ( 1 en düşük, 5 en yüksek) müşterileri kategorize ediyor.
· Recency (en son alışverişinden - siparişinden bugüne kaç gün geçmiş)
· Frequency (kaç alışveriş yapmış veya sipariş vermiş )
· Monetary (parasal değer alışveriş tutarı * adetler)
Hemen kolları sıvayıp veri setini indirelim ; ben OnlineStoreii setine uyarladığım anonimleştirilmek üzere manipüle edilmiş farklı bir veri setini kullanacağım.

![0686bef-Screenshot_2023-10-03_at_12 37 19](https://github.com/user-attachments/assets/17226671-8857-4d53-ba0e-56623d6dbb96)


Veri seti Californiya üniversitesinin sitesinden :  https://archive.ics.uci.edu/dataset/502/online+retail+ii
