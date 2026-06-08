.class public final Landroid/support/v4/app/at;
.super Landroid/support/v4/app/ax;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/au;

    invoke-direct {v0}, Landroid/support/v4/app/au;-><init>()V

    :goto_0
    new-instance v0, Landroid/support/v4/app/ay;

    invoke-direct {v0}, Landroid/support/v4/app/ay;-><init>()V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/aw;

    invoke-direct {v0}, Landroid/support/v4/app/aw;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/av;

    invoke-direct {v0}, Landroid/support/v4/app/av;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/at;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/at;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/at;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/at;->d:Z

    return v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/at;->e:Landroid/os/Bundle;

    return-object v0
.end method
