.class Lcom/jeppesen/android/views/imagezoom/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/views/imagezoom/b;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/views/imagezoom/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const v5, 0x3c23d70a    # 0.01f

    const v4, 0x3b83126f    # 0.004f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/jeppesen/android/views/imagezoom/e;->a(J)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v0}, Lcom/jeppesen/android/views/imagezoom/b;->b(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/jeppesen/android/views/imagezoom/e;->a(J)V

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v0}, Lcom/jeppesen/android/views/imagezoom/b;->a(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/jeppesen/android/views/imagezoom/e;->a(FF)Z

    move-result v0

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v3}, Lcom/jeppesen/android/views/imagezoom/b;->b(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/jeppesen/android/views/imagezoom/e;->a(FF)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v3}, Lcom/jeppesen/android/views/imagezoom/b;->c(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v4}, Lcom/jeppesen/android/views/imagezoom/b;->a(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jeppesen/android/views/imagezoom/e;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jeppesen/android/views/imagezoom/j;->c(F)V

    iget-object v3, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v3}, Lcom/jeppesen/android/views/imagezoom/b;->c(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v3

    iget-object v4, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v4}, Lcom/jeppesen/android/views/imagezoom/b;->b(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jeppesen/android/views/imagezoom/e;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jeppesen/android/views/imagezoom/j;->d(F)V

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v0}, Lcom/jeppesen/android/views/imagezoom/b;->e(Lcom/jeppesen/android/views/imagezoom/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v5}, Lcom/jeppesen/android/views/imagezoom/b;->d(Lcom/jeppesen/android/views/imagezoom/b;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x14

    sub-long v1, v3, v1

    sub-long v1, v6, v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/c;->a:Lcom/jeppesen/android/views/imagezoom/b;

    invoke-static {v0}, Lcom/jeppesen/android/views/imagezoom/b;->c(Lcom/jeppesen/android/views/imagezoom/b;)Lcom/jeppesen/android/views/imagezoom/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeppesen/android/views/imagezoom/j;->notifyObservers()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
