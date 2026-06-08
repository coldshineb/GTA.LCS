.class public Lcom/rockstargames/hal/OtherAppLauncher;
.super Ljava/lang/Object;
.source "OtherAppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/OtherAppLauncher$Market;,
        Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    }
.end annotation


# static fields
.field private static final PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

.field private static final PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstar.gta3"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v4, "com.rockstar.gta3ger"

    const-string v5, "DE"

    invoke-direct {v1, v4, v5}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v6, "com.rockstar.gta3jpn"

    const-string v7, "JP"

    invoke-direct {v1, v6, v7}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v7, "com.rockstar.gta3aus"

    const-string v8, "AU"

    invoke-direct {v1, v7, v8}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    aput-object v1, v0, v7

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    .line 41
    new-array v0, v6, [Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v6, "com.rockstargames.gtavc"

    invoke-direct {v1, v6, v3}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstargames.gtavcger"

    invoke-direct {v1, v2, v5}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadExternalWebBrowser(Ljava/lang/String;)V
    .locals 2

    .line 111
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "text/html"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string p0, "Launch Browser..."

    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 119
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static getVersions(Lcom/rockstargames/hal/OtherAppLauncher$Market;Ljava/lang/String;Ljava/lang/String;)[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    .locals 3

    .line 50
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 54
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    aget-object v0, p0, v1

    iget-object v0, v0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x1

    .line 60
    new-array p0, p0, [Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    new-instance v0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, p0, v1

    return-object p0
.end method

.method public static openAppOrStorePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 69
    invoke-static {p0}, Lcom/rockstargames/hal/OtherAppLauncher$Market;->valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/OtherAppLauncher$Market;

    move-result-object p0

    .line 71
    invoke-static {p0, p1, p2}, Lcom/rockstargames/hal/OtherAppLauncher;->getVersions(Lcom/rockstargames/hal/OtherAppLauncher$Market;Ljava/lang/String;Ljava/lang/String;)[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    move-result-object p1

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v1, p1, v3

    .line 78
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v1, v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 91
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 95
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->locale:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    aget-object p1, p1, v0

    iget-object p2, p1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->marketIdentifier:Ljava/lang/String;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :cond_4
    :goto_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2
.end method
