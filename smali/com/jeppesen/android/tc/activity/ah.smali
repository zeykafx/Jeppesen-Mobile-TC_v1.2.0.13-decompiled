.class public Lcom/jeppesen/android/tc/activity/ah;
.super Landroid/widget/ArrayAdapter;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/jeppesen/jeppview/jtca/data/Airport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jeppesen/android/tc/activity/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/tc/activity/ah;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Lcom/jeppesen/jeppview/jtca/data/Airport;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p5, p0, Lcom/jeppesen/android/tc/activity/ah;->a:Lcom/jeppesen/jeppview/jtca/data/Airport;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f090024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090026

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/ah;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Taxi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jeppesen/android/tc/activity/ah;->a:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-virtual {v4}, Lcom/jeppesen/jeppview/jtca/data/Airport;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    invoke-virtual {v3}, Lcom/jeppesen/jeppview/jtca/data/ChartGroupDivider;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jeppesen/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
