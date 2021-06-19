.class Lcom/jeppesen/android/tc/activity/h;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/g;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/g;->a(Lcom/jeppesen/android/tc/activity/g;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/g;->b(Lcom/jeppesen/android/tc/activity/g;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    monitor-exit v2

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/g;->b(Lcom/jeppesen/android/tc/activity/g;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_4

    sget-object v0, Lcom/jeppesen/android/tc/activity/g;->b:Lcom/jeppesen/jeppview/jtca/data/Airport;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/jeppesen/android/tc/activity/g;->a(Lcom/jeppesen/android/tc/activity/g;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/g;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/h;->a:Lcom/jeppesen/android/tc/activity/g;

    invoke-virtual {v0}, Lcom/jeppesen/android/tc/activity/g;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
