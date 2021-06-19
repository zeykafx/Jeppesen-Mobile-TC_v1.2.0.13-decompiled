.class Lcom/jeppesen/android/tc/d;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/jeppesen/android/tc/MobileTC;


# direct methods
.method private constructor <init>(Lcom/jeppesen/android/tc/MobileTC;)V
    .locals 0

    iput-object p1, p0, Lcom/jeppesen/android/tc/d;->a:Lcom/jeppesen/android/tc/MobileTC;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jeppesen/android/tc/MobileTC;Lcom/jeppesen/android/tc/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeppesen/android/tc/d;-><init>(Lcom/jeppesen/android/tc/MobileTC;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 11

    const/4 v1, 0x0

    aget-object v0, p1, v1

    const-string v2, "*.ZIP"

    invoke-static {v0, v2}, Lcom/jeppesen/android/util/p;->f(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/jeppesen/android/tc/d;->a:Lcom/jeppesen/android/tc/MobileTC;

    invoke-virtual {v7}, Lcom/jeppesen/android/tc/MobileTC;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/jeppesen/android/tc/service/ManualsService;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "com.jeppesen.android.tc.service.ManualsService_FileName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p1, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.jeppesen.android.tc.service.ManualsService_FileSize"

    invoke-virtual {v7, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "com.jeppesen.android.tc.service.ManualsService_DownloadId"

    const-wide/16 v5, -0x1

    invoke-virtual {v7, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "com.jeppesen.android.tc.service.ManualsService_Bundle"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/jeppesen/android/tc/d;->a:Lcom/jeppesen/android/tc/MobileTC;

    invoke-virtual {v4}, Lcom/jeppesen/android/tc/MobileTC;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jeppesen/android/tc/d;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
