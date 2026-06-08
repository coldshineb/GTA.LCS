.class public Lcom/rockstargames/hal/andSecureData;
.super Ljava/lang/Object;
.source "andSecureData.java"


# static fields
.field private static prefEditor:Landroid/content/SharedPreferences$Editor;

.field private static settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBool(Ljava/lang/String;)Z
    .locals 2

    .line 39
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static GetFloat(Ljava/lang/String;)F
    .locals 2

    .line 49
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->settings:Landroid/content/SharedPreferences;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static GetInt(Ljava/lang/String;)I
    .locals 2

    .line 29
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->settings:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->settings:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 2

    .line 13
    const-string v0, "prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/rockstargames/hal/andSecureData;->settings:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/rockstargames/hal/andSecureData;->prefEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static Save()V
    .locals 1

    .line 60
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->prefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static SetBool(Ljava/lang/String;Z)V
    .locals 1

    .line 44
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->prefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static SetFloat(Ljava/lang/String;F)V
    .locals 1

    .line 54
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->prefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static SetInt(Ljava/lang/String;I)V
    .locals 1

    .line 34
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->prefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static SetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/rockstargames/hal/andSecureData;->prefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
