.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final V:Landroid/support/v4/e/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final a:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:I

.field I:Landroid/view/ViewGroup;

.field J:Landroid/view/View;

.field K:Landroid/view/View;

.field L:Z

.field M:Z

.field N:Landroid/support/v4/app/N;

.field O:Z

.field P:Z

.field Q:Ljava/lang/Object;

.field R:Ljava/lang/Object;

.field S:Ljava/lang/Object;

.field T:Landroid/support/v4/app/az;

.field U:Landroid/support/v4/app/az;

.field private W:Ljava/lang/Object;

.field private X:Ljava/lang/Object;

.field private Y:Ljava/lang/Object;

.field b:I

.field c:Landroid/view/View;

.field d:I

.field e:Landroid/os/Bundle;

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Ljava/lang/String;

.field i:Landroid/os/Bundle;

.field j:Landroid/support/v4/app/Fragment;

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field t:Landroid/support/v4/app/u;

.field u:Landroid/support/v4/app/s;

.field v:Landroid/support/v4/app/u;

.field w:Landroid/support/v4/app/Fragment;

.field x:I

.field y:I

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/e/l;

    invoke-direct {v0}, Landroid/support/v4/e/l;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/e/l;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->b:I

    iput v2, p0, Landroid/support/v4/app/Fragment;->g:I

    iput v2, p0, Landroid/support/v4/app/Fragment;->k:I

    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->F:Z

    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->M:Z

    iput-object v1, p0, Landroid/support/v4/app/Fragment;->W:Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->Q:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/app/Fragment;->X:Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->R:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/app/Fragment;->Y:Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->S:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    iput-object v1, p0, Landroid/support/v4/app/Fragment;->U:Landroid/support/v4/app/az;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/e/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/e/l;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p2, v0, Landroid/support/v4/app/Fragment;->i:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/app/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/support/v4/app/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/support/v4/app/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/e/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/e/l;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 0

    return-void
.end method

.method public static e()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static g()V
    .locals 0

    return-void
.end method


# virtual methods
.method final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/u;->j:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(ILandroid/support/v4/app/Fragment;)V
    .locals 2

    iput p1, p0, Landroid/support/v4/app/Fragment;->g:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->G:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->G:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Landroid/view/LayoutInflater;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->c()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->h()V

    iget v1, p0, Landroid/support/v4/app/Fragment;->b:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->i()V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-static {v0, v1}, Landroid/support/v4/view/v;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/B;)V

    return-object v0

    :cond_1
    iget v1, p0, Landroid/support/v4/app/Fragment;->b:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->h()V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/v4/app/Fragment;->b:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->g()V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/v4/app/Fragment;->b:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->f()V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final h()V
    .locals 3

    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0}, Landroid/support/v4/app/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    new-instance v2, Landroid/support/v4/app/j;

    invoke-direct {v2, p0}, Landroid/support/v4/app/j;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final i()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iput-boolean v3, v0, Landroid/support/v4/app/u;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()Z

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->O:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/s;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/N;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->b()V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->h()V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->f()V

    :cond_5
    return-void
.end method

.method final j()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/u;->a(IZ)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->O:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->O:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/s;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/N;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->d()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->c()V

    goto :goto_0
.end method

.method final k()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->O:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/s;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/N;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->g()V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/m;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m;

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->G:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->g:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->x:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
