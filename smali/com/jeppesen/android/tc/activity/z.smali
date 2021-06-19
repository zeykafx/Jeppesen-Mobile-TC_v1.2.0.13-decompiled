.class Lcom/jeppesen/android/tc/activity/z;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/activity/z;->a:Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;Lcom/jeppesen/android/tc/activity/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/activity/z;-><init>(Lcom/jeppesen/android/tc/activity/ChartDisplayActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/jeppesen/android/a/a;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/activity/z;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
