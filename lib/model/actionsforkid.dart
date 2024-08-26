class ActionsCrs {
  final int? id;
  final String? title, subTitle, description, image;

  ActionsCrs(
    this.id,
    this.title,
    this.subTitle,
    this.description,
    this.image,
  );
}

var actionscrs = [
  ActionsCrs(
    1,
    "برنامج الحماية",
    "مشروع طريق النحل",
    "حتى يبقوا سنداً لبعضهم في أجمل أوقاتهم وأحزنها خرج الاخوة من مركز الذكور ومركز الاناث بنشاط ترفيهي لتقوية العلاقة بينهم  كل الشكر لمن ساهم في رسم سعادة على وجوه أطفالنا",
    "assets/images/bee1.jpg",
  ),
  ActionsCrs(
    2,
    "برنامج الحماية",
    "مركز اللقاء الاسري",
    "الكثير من الأطفال حرمت فرحة العيد بسبب الخلافات الاسرية لم ننسهم بل عملنا على نشاط ترفيهي لنعيد لهم الفرح والسرور في مركز اللقاء الأسري",
    "assets/images/family3.jpg",
  ),
  ActionsCrs(
    3,
    "برنامج الحماية",
    "أمنين مركز مجتمعي لكل الأسرة ",
    "لحظات مليئة بالبهجة والتفاؤل في بداية أيام النادي لاطفالنا في مركز أمنين",
    "assets/images/aminen_eid.jpg",
  )
];
