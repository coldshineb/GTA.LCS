.class final Lcom/adjust/sdk/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget v8, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v0}, Lcom/adjust/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    const-string v2, "Missing permission: ACCESS_WIFI_STATE"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v9}, Lcom/adjust/sdk/u;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/adjust/sdk/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->g:Ljava/lang/String;

    and-int/lit8 v2, v8, 0xf

    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    :goto_2
    iput-object v2, p0, Lcom/adjust/sdk/r;->h:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/adjust/sdk/r;->i:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, p0, Lcom/adjust/sdk/r;->j:Ljava/lang/String;

    const-string v2, "android"

    iput-object v2, p0, Lcom/adjust/sdk/r;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/adjust/sdk/r;->l:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->m:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->n:Ljava/lang/String;

    and-int/lit8 v2, v8, 0xf

    packed-switch v2, :pswitch_data_1

    move-object v2, v1

    :goto_3
    iput-object v2, p0, Lcom/adjust/sdk/r;->o:Ljava/lang/String;

    and-int/lit8 v2, v8, 0x30

    sparse-switch v2, :sswitch_data_0

    move-object v2, v1

    :goto_4
    iput-object v2, p0, Lcom/adjust/sdk/r;->p:Ljava/lang/String;

    iget v2, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v2, :cond_3

    move-object v2, v1

    :goto_5
    iput-object v2, p0, Lcom/adjust/sdk/r;->q:Ljava/lang/String;

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->r:Ljava/lang/String;

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->s:Ljava/lang/String;

    if-nez p2, :cond_6

    const-string v2, "android4.1.5"

    :goto_6
    iput-object v2, p0, Lcom/adjust/sdk/r;->e:Ljava/lang/String;

    if-nez v3, :cond_7

    invoke-static {p1}, Landroid/support/v4/app/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, p0, Lcom/adjust/sdk/r;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/adjust/sdk/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v4/app/a;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/r;->t:Ljava/util/Map;

    if-nez v0, :cond_8

    move-object v2, v1

    :goto_8
    iput-object v2, p0, Lcom/adjust/sdk/r;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    :goto_9
    iput-object v1, p0, Lcom/adjust/sdk/r;->b:Ljava/lang/String;

    return-void

    :cond_1
    move v3, v5

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "phone"

    goto :goto_2

    :pswitch_1
    const-string v2, "tablet"

    goto/16 :goto_2

    :pswitch_2
    const-string v2, "small"

    goto :goto_3

    :pswitch_3
    const-string v2, "normal"

    goto :goto_3

    :pswitch_4
    const-string v2, "large"

    goto :goto_3

    :pswitch_5
    const-string v2, "xlarge"

    goto :goto_3

    :sswitch_0
    const-string v2, "long"

    goto :goto_4

    :sswitch_1
    const-string v2, "normal"

    goto :goto_4

    :cond_3
    const/16 v7, 0x8c

    if-ge v2, v7, :cond_4

    const-string v2, "low"

    goto :goto_5

    :cond_4
    const/16 v7, 0xc8

    if-le v2, v7, :cond_5

    const-string v2, "high"

    goto :goto_5

    :cond_5
    const-string v2, "medium"

    goto :goto_5

    :cond_6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s@%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v5

    const-string v5, "android4.1.5"

    aput-object v5, v7, v4

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v1

    goto :goto_7

    :cond_8
    const-string v2, "SHA-1"

    invoke-static {v0, v2}, Lcom/adjust/sdk/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_9
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v0, v1}, Lcom/adjust/sdk/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    :cond_1
    const-string v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method
