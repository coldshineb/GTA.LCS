.class public Lcom/rockstargames/hal/OtherAppLauncher;
.super Ljava/lang/Object;


# static fields
.field private static final PLAY_gta3:[Lcom/rockstargames/hal/c;

.field private static final PLAY_vc:[Lcom/rockstargames/hal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockstargames/hal/c;

    new-instance v1, Lcom/rockstargames/hal/c;

    const-string v2, "com.rockstar.gta3"

    invoke-direct {v1, v2, v8}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/rockstargames/hal/c;

    const-string v2, "com.rockstar.gta3ger"

    const-string v3, "DE"

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/rockstargames/hal/c;

    const-string v2, "com.rockstar.gta3jpn"

    const-string v3, "JP"

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Lcom/rockstargames/hal/c;

    const-string v3, "com.rockstar.gta3aus"

    const-string v4, "AU"

    invoke-direct {v2, v3, v4}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/c;

    new-array v0, v7, [Lcom/rockstargames/hal/c;

    new-instance v1, Lcom/rockstargames/hal/c;

    const-string v2, "com.rockstargames.gtavc"

    invoke-direct {v1, v2, v8}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/rockstargames/hal/c;

    const-string v2, "com.rockstargames.gtavcger"

    const-string v3, "DE"

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadExternalWebBrowser(Ljava/lang/String;)V
    .locals 3

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Launch Browser..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static getVersions(Lcom/rockstargames/hal/d;Ljava/lang/String;Ljava/lang/String;)[Lcom/rockstargames/hal/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/rockstargames/hal/d;->a:Lcom/rockstargames/hal/d;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/c;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/rockstargames/hal/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/rockstargames/hal/d;->a:Lcom/rockstargames/hal/d;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/c;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/rockstargames/hal/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/rockstargames/hal/c;

    new-instance v1, Lcom/rockstargames/hal/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/rockstargames/hal/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static openAppOrStorePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/rockstargames/hal/d;->valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/d;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/rockstargames/hal/OtherAppLauncher;->getVersions(Lcom/rockstargames/hal/d;Ljava/lang/String;Ljava/lang/String;)[Lcom/rockstargames/hal/c;

    move-result-object v5

    const/4 v2, 0x0

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v2, v2, Lcom/rockstargames/hal/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_2
    array-length v3, v5

    if-ge v0, v3, :cond_2

    aget-object v3, v5, v0

    iget-object v3, v3, Lcom/rockstargames/hal/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v0, v5, v0

    iget-object p2, v0, Lcom/rockstargames/hal/c;->b:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/rockstargames/hal/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
