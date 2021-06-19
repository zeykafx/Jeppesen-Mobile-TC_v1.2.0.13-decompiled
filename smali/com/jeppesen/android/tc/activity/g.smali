.class public Lcom/jeppesen/android/tc/activity/g;
.super Landroid/widget/ArrayAdapter;


# static fields
.field static final b:Lcom/jeppesen/jeppview/jtca/data/Airport;

.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/jeppesen/android/tc/activity/h;

.field private d:Landroid/location/Location;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/jeppesen/android/tc/activity/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/g;->c:Ljava/lang/String;

    new-instance v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    const-string v1, "No airports found"

    const-string v2, "Enter a valid airport ID or name"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/jeppesen/jeppview/jtca/data/Airport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/jeppesen/android/tc/activity/g;->b:Lcom/jeppesen/jeppview/jtca/data/Airport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/location/Location;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->g:Ljava/util/List;

    iput-object p5, p0, Lcom/jeppesen/android/tc/activity/g;->d:Landroid/location/Location;

    iget-object v2, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->d:Landroid/location/Location;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-direct {p0, v0}, Lcom/jeppesen/android/tc/activity/g;->a(Lcom/jeppesen/jeppview/jtca/data/Airport;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a(Ljava/lang/Float;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jeppesen/jeppview/jtca/data/Airport;->h:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jeppesen/jeppview/jtca/data/Airport;->g:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method private a(Lcom/jeppesen/jeppview/jtca/data/Airport;)Ljava/lang/Float;
    .locals 7

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->d()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/g;->d:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jeppesen/jeppview/jtca/data/Airport;->e()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/jeppesen/android/tc/activity/g;->d:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/jeppesen/android/tc/activity/g;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/jeppesen/android/tc/activity/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/g;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/jeppesen/android/tc/activity/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->a:Lcom/jeppesen/android/tc/activity/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jeppesen/android/tc/activity/h;

    invoke-direct {v0, p0}, Lcom/jeppesen/android/tc/activity/h;-><init>(Lcom/jeppesen/android/tc/activity/g;)V

    iput-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->a:Lcom/jeppesen/android/tc/activity/h;

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->a:Lcom/jeppesen/android/tc/activity/h;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jeppesen/jeppview/jtca/data/Airport;

    const v1, 0x7f09001d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jeppesen/android/util/i;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    const v2, 0x7f09001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v2, 0x7f09001f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jeppesen/jeppview/jtca/data/Airport;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v2, 0x7f090020

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    sget-object v3, Lcom/jeppesen/android/tc/activity/g;->b:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_5
    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
