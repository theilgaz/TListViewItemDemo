# TListViewItemDemo

With Rad Studio 10 Seattle, there are some changes with FireMonkey components.

Many members that used to be in TCustomListView are now in a different class or even a different unit. Members that went into a different class continue being a part of TCustomListView through inheritance. 

The TListView.Selected property still returns a FMX.ListView.Types.TListItem as before. However, TListItem no longer has its own Detail and Text properties. They have been moved to the FMX.ListView.Appearances.TListViewItem class, which derives from TListItem.


# TListViewItemDemo (in Turkish)

Rad Studio 10 Seattle ile birlikte gelen yenilikler birçok FireMonkey komponentini de barındırıyor. 

TCustomListView kullanan birçok kullanıcı artık farklı sınıflar ve unit'ler kullanmak durumunda. TListItem.Selected özelliği önceki sürümlerdeki gibi çalışmaya devam ediyor fakat artık kendine has Text, Detail, ButtonText, Index özelliklerini barındırmıyor. Bu özellikleri kullanmak için Appearances.TListViewItem sınıfından referans alıp, cast işlemi uygulamamız gerekiyor.
