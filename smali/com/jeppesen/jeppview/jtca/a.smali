.class public interface abstract Lcom/jeppesen/jeppview/jtca/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "uptcl."

.field public static final b:Ljava/lang/String; = "demojit"

.field public static final c:Ljava/lang/String; = "http://www.jepptech.com/Scripts/Redirect.asp?list=1"

.field public static final d:Ljava/lang/String; = "http://www.jepptech.com/GenKey.asp?"

.field public static final e:Ljava/lang/String; = "AndroidTC"

.field public static final f:Ljava/lang/String; = "http://www.jepptech.com/DeactKey.asp?"

.field public static final g:Ljava/lang/String; = "http://jsum.jeppesen.com/jsum/license/License_data.html"

.field public static final h:Ljava/lang/String; = "Database_Begin_Date"

.field public static final i:Ljava/lang/String; = "Database_End_Date"

.field public static final j:Ljava/lang/String; = "Data_Spec_Version"

.field public static final k:Ljava/lang/String; = "download.zip"

.field public static final l:Ljava/lang/String; = "tmp"

.field public static final m:Ljava/lang/String; = "notams.dbt"

.field public static final n:Ljava/lang/String; = "notams.dbf"

.field public static final o:Ljava/lang/String; = "vfrntms.dbt"

.field public static final p:Ljava/lang/String; = "vfrntms.dbf"

.field public static final q:Ljava/lang/String; = "airports.dbf"

.field public static final r:Ljava/lang/String; = "vfrapts.dbf"

.field public static final s:Ljava/lang/String; = "manuals_metadata"

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String; = "coverages_metadata"

.field public static final v:Ljava/lang/String;

.field public static final w:F = 17.0f

.field public static final x:F = 20.5f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jeppesen.android.tc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "docs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/jeppview/jtca/a;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jeppesen.android.tc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/jeppview/jtca/a;->v:Ljava/lang/String;

    return-void
.end method
