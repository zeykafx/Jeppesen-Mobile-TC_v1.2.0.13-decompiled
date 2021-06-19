.class public Lcom/jeppesen/android/util/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "Ref"

.field public static final b:Ljava/lang/String; = "SID"

.field public static final c:Ljava/lang/String; = "STAR"

.field public static final d:Ljava/lang/String; = "Appr"

.field public static final e:Ljava/lang/String; = "Taxi"

.field public static final f:Ljava/lang/String; = "CO"

.field private static final g:Ljava/lang/String;

.field private static h:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jeppesen/android/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeppesen/android/util/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AD"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "TG"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "N"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "ST"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "TC"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "TM"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "MG"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "PC"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RE"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RV"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "CN"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "NN"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AM"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AT"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "BL"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "BS"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "CL"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "CR"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "DU"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "EM"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "EP"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "ER"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "IN"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "LR"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "MC"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "MT"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "NA"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RA"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RG"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RL"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RR"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RT"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "TP"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AF"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AQ"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "A"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "B"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "C"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "F"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "HH"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "HL"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "L"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6A"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6B"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6L"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6T"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6W"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6C"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6D"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6G"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6H"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6J"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6K"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6M"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6N"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6P"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6Q"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6R"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6S"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6U"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6V"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6X"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "6Y"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "60"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "61"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "62"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "63"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "64"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "65"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "66"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "67"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "68"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "69"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "7A"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "7E"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "WR"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "X"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "Y"

    const-string v2, "Ref"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "01"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "02"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "03"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "04"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "05"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "06"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "07"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "08"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "09"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "11"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "15"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1A"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1C"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1D"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1E"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1F"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1G"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1H"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1J"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1K"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1L"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1M"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1N"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "1P"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "21"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "22"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "23"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "24"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "25"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "26"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "27"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "28"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "29"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2A"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2B"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2C"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2D"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2E"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2F"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2G"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2H"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2J"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2K"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "2N"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "VF"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RP"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "RS"

    const-string v2, "Appr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AP"

    const-string v2, "Taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "P"

    const-string v2, "Taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "AA"

    const-string v2, "Taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "R"

    const-string v2, "Taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "S"

    const-string v2, "Taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "J"

    const-string v2, "STAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "J2"

    const-string v2, "STAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "JG"

    const-string v2, "STAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "JH"

    const-string v2, "STAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "JP"

    const-string v2, "STAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "G"

    const-string v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "G2"

    const-string v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "GG"

    const-string v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "GH"

    const-string v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "GP"

    const-string v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "GR"

    const-string v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "TT"

    const-string v2, "CO"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "EO"

    const-string v2, "CO"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    const-string v1, "OP"

    const-string v2, "CO"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/jeppesen/android/util/c;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jeppesen/android/util/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chart type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Ref"

    :cond_0
    return-object v0
.end method
