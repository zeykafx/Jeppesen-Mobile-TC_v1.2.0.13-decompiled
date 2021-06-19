.class Lcom/jeppesen/android/views/imagezoom/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/views/imagezoom/f;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/views/imagezoom/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/views/imagezoom/g;->a:Lcom/jeppesen/android/views/imagezoom/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/g;->a:Lcom/jeppesen/android/views/imagezoom/f;

    sget-object v1, Lcom/jeppesen/android/views/imagezoom/i;->c:Lcom/jeppesen/android/views/imagezoom/i;

    invoke-static {v0, v1}, Lcom/jeppesen/android/views/imagezoom/f;->a(Lcom/jeppesen/android/views/imagezoom/f;Lcom/jeppesen/android/views/imagezoom/i;)Lcom/jeppesen/android/views/imagezoom/i;

    iget-object v0, p0, Lcom/jeppesen/android/views/imagezoom/g;->a:Lcom/jeppesen/android/views/imagezoom/f;

    invoke-static {v0}, Lcom/jeppesen/android/views/imagezoom/f;->a(Lcom/jeppesen/android/views/imagezoom/f;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
