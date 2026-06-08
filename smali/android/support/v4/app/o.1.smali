.class final Landroid/support/v4/app/o;
.super Landroid/support/v4/app/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/s",
        "<",
        "Landroid/support/v4/app/m;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic c:Landroid/support/v4/app/m;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/m;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-direct {p0, p1}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/m;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/support/v4/app/m;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/m;->d:Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method
