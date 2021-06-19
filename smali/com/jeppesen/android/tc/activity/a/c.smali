.class Lcom/jeppesen/android/tc/activity/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/jeppesen/android/tc/activity/a/b;


# direct methods
.method constructor <init>(Lcom/jeppesen/android/tc/activity/a/b;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/a/c;->b:Lcom/jeppesen/android/tc/activity/a/b;

    iput-object p2, p0, Lcom/jeppesen/android/tc/activity/a/c;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jeppesen/android/tc/activity/a/c;->b:Lcom/jeppesen/android/tc/activity/a/b;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/a/b;->a:Lcom/jeppesen/android/tc/activity/a/a;

    iget-object v0, v0, Lcom/jeppesen/android/tc/activity/a/a;->b:Landroid/location/LocationListener;

    iget-object v1, p0, Lcom/jeppesen/android/tc/activity/a/c;->a:Landroid/location/Location;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
