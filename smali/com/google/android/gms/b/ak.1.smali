.class public final Lcom/google/android/gms/b/ak;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
