.class Lcom/jeppesen/android/tc/activity/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v5, 0x1

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v0}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->k(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "% of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v3}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MB (est. time remaining: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->n(Lcom/jeppesen/android/tc/activity/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB (est. time remaining: 1 minute)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB (est. time remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->m(Lcom/jeppesen/android/tc/activity/UpdateActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->j(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/bd;->a:Lcom/jeppesen/android/tc/activity/UpdateActivity;

    invoke-static {v1}, Lcom/jeppesen/android/tc/activity/UpdateActivity;->l(Lcom/jeppesen/android/tc/activity/UpdateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB (est. time remaining: 1 second)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
