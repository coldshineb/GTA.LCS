.class final Landroid/support/v4/app/u;
.super Landroid/support/v4/app/t;

# interfaces
.implements Landroid/support/v4/view/B;


# static fields
.field private static A:Landroid/view/animation/Interpolator;

.field static a:Z

.field private static l:Z

.field private static s:Ljava/lang/reflect/Field;

.field private static z:Landroid/view/animation/Interpolator;


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Landroid/support/v4/app/s;

.field i:Landroid/support/v4/app/q;

.field j:Z

.field k:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private n:[Ljava/lang/Runnable;

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/support/v4/app/Fragment;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Bundle;

.field private x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    sput-boolean v0, Landroid/support/v4/app/u;->a:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/u;->l:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/u;->s:Ljava/lang/reflect/Field;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/u;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/u;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/u;->g:I

    iput-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0, p0}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/u;)V

    iput-object v0, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroid/support/v4/app/u;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Landroid/support/v4/app/u;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroid/support/v4/app/u;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6

    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->e()Landroid/view/animation/Animation;

    iget v0, p1, Landroid/support/v4/app/Fragment;->H:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    iget v2, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    :cond_5
    packed-switch v0, :pswitch_data_0

    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->f()I

    move-result p4

    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x3f89999a    # 1.075f

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v4, v3}, Landroid/support/v4/app/u;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {v3, v4}, Landroid/support/v4/app/u;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/b;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, Landroid/support/v4/app/u;->g:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/e/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    throw p1

    :catch_0
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/aa;->d(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/aa;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/animation/AnimationSet;

    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private b(I)Landroid/support/v4/app/Fragment;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->x:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->x:I

    if-eq v2, p1, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private static b(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/app/u;->a(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Landroid/support/v4/app/u;->s:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    const-class v0, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/u;->s:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    sget-object v0, Landroid/support/v4/app/u;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    new-instance v1, Landroid/support/v4/app/x;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v4/app/x;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FragmentManager"

    const-string v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "FragmentManager"

    const-string v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method private n()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v6, v3

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_2

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/u;->o:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u;->v:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    iput-boolean v3, v1, Landroid/support/v4/app/Fragment;->L:Z

    iget v2, p0, Landroid/support/v4/app/u;->g:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_1
.end method

.method private o()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/u;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/u;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/b;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Landroid/support/v4/app/F;
    .locals 1

    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/u;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/A;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v0, :cond_f

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :goto_2
    if-ne v1, v5, :cond_3

    if-ne v7, v5, :cond_3

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    if-eq v7, v5, :cond_6

    invoke-direct {p0, v7}, Landroid/support/v4/app/u;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {p0, v8}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    if-eq v1, v5, :cond_5

    invoke-direct {p0, v1}, Landroid/support/v4/app/u;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_8

    invoke-static {p3, v6}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v7, :cond_7

    move v0, v7

    :goto_4
    iput v0, v4, Landroid/support/v4/app/Fragment;->x:I

    iput v1, v4, Landroid/support/v4/app/Fragment;->y:I

    iput-object v8, v4, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->q:Z

    iput-object p0, v4, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iput-object v0, v4, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iget-object v0, v4, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {v4, p4, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    :goto_5
    iget v0, p0, Landroid/support/v4/app/u;->g:I

    if-gtz v0, :cond_b

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_b

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :goto_6
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, v4

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->q:Z

    if-eqz v4, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->q:Z

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->D:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p4, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_a
    move-object v1, v0

    goto/16 :goto_5

    :cond_b
    invoke-direct {p0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_6

    :cond_c
    if-eqz v7, :cond_d

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    :cond_d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    goto/16 :goto_0

    :cond_f
    move-object v6, v0

    goto/16 :goto_1
.end method

.method final a(IIIZ)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/u;->g:I

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Landroid/support/v4/app/u;->g:I

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    invoke-direct {p0}, Landroid/support/v4/app/u;->n()V

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/u;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    iput-boolean v5, p0, Landroid/support/v4/app/u;->t:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/u;->a(IIIZ)V

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->g:I

    aget-object v3, v3, v4

    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iput-object v8, v0, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    iput v2, v0, Landroid/support/v4/app/Fragment;->s:I

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->q:Z

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->m:Z

    iput-object v8, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v5, v5, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move v0, v2

    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v3, v1, v0

    if-eqz v3, :cond_8

    iget-object v1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v4, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_5

    iget-object v1, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    :goto_3
    iget-object v4, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, v1, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    iget-object v6, v3, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    iget-object v6, v3, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;

    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-static {v5, v6, v7}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    iput-object v6, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-object v6, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    iget-object v6, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-object v6, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    :cond_7
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget v6, v3, Landroid/support/v4/app/FragmentState;->b:I

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-boolean v5, v3, Landroid/support/v4/app/FragmentState;->c:Z

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->p:Z

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iput-boolean v9, v4, Landroid/support/v4/app/Fragment;->r:Z

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget v5, v3, Landroid/support/v4/app/FragmentState;->d:I

    iput v5, v4, Landroid/support/v4/app/Fragment;->x:I

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget v5, v3, Landroid/support/v4/app/FragmentState;->e:I

    iput v5, v4, Landroid/support/v4/app/Fragment;->y:I

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-boolean v5, v3, Landroid/support/v4/app/FragmentState;->g:Z

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->C:Z

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-boolean v5, v3, Landroid/support/v4/app/FragmentState;->h:Z

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->B:Z

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    sget-boolean v1, Landroid/support/v4/app/u;->a:Z

    iget-object v1, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    if-eqz p2, :cond_d

    move v3, v2

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->k:I

    if-ltz v1, :cond_b

    iget v1, v0, Landroid/support/v4/app/Fragment;->k:I

    iget-object v4, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->k:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    :cond_b
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_c
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    goto :goto_6

    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    move v1, v2

    :goto_7
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_e

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_e
    iput-boolean v9, v0, Landroid/support/v4/app/Fragment;->m:Z

    iget-object v3, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_10
    iput-object v8, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    :goto_8
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/u;)Landroid/support/v4/app/b;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Landroid/support/v4/app/b;->g:I

    if-ltz v1, :cond_12

    iget v1, v0, Landroid/support/v4/app/b;->g:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/u;->a(ILandroid/support/v4/app/b;)V

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    iput-object v8, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/support/v4/app/Fragment;->s:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->E:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->m:Z

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-eqz v0, :cond_5

    move v2, v5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_2
    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 10

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    if-le p2, v0, :cond_2

    iget p2, p1, Landroid/support/v4/app/Fragment;->b:I

    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    if-ge v0, v9, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    if-ge v0, p2, :cond_27

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    if-eqz v0, :cond_5

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    iget v2, p1, Landroid/support/v4/app/Fragment;->d:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->b:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/u;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->l:I

    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_8

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-le p2, v6, :cond_8

    move p2, v6

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iget-object v0, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->w:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    if-nez v0, :cond_b

    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_9

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    :cond_9
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_c

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    goto :goto_2

    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()Landroid/app/Activity;

    move-result-object v0

    goto :goto_3

    :cond_c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->w:Landroid/support/v4/app/Fragment;

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->D:Z

    if-nez v0, :cond_10

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v1, :cond_d

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iput-boolean v3, v1, Landroid/support/v4/app/u;->j:Z

    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v1, :cond_e

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_10

    const-string v1, "android:support:fragments"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-nez v1, :cond_f

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h()V

    :cond_f
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v1, v0, v7}, Landroid/support/v4/app/u;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->f()V

    :cond_10
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->D:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Z)V

    :goto_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-static {}, Landroid/support/v4/app/Fragment;->f()V

    :cond_12
    :goto_5
    :pswitch_1
    if-le p2, v5, :cond_22

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-nez v0, :cond_1a

    iget v0, p1, Landroid/support/v4/app/Fragment;->y:I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    iget v1, p1, Landroid/support/v4/app/Fragment;->y:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_16

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->r:Z

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/support/v4/app/Fragment;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    if-nez v4, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/S;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    goto :goto_4

    :cond_14
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    goto :goto_5

    :cond_15
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iget-object v4, v4, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/app/Fragment;->y:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") for fragment "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_16
    :goto_6
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->d()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1c

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Z)V

    :goto_7
    if-eqz v0, :cond_18

    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/support/v4/app/u;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_18
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-eqz v0, :cond_19

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-static {}, Landroid/support/v4/app/Fragment;->f()V

    :cond_1a
    :goto_8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iput-boolean v3, v0, Landroid/support/v4/app/u;->j:Z

    :cond_1b
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_1e

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/S;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    goto :goto_7

    :cond_1d
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    goto :goto_8

    :cond_1e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->g()V

    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_20

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    :cond_20
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_21

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    :cond_22
    :pswitch_2
    if-le p2, v6, :cond_23

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->i()V

    :cond_23
    :pswitch_3
    if-le p2, v9, :cond_6

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->o:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_24

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iput-boolean v3, v0, Landroid/support/v4/app/u;->j:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()Z

    :cond_24
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_25

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_26

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()Z

    :cond_26
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    goto/16 :goto_1

    :cond_27
    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    if-le v0, p2, :cond_6

    iget v0, p1, Landroid/support/v4/app/Fragment;->b:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :cond_28
    :goto_9
    :pswitch_4
    if-gtz p2, :cond_6

    iget-boolean v0, p0, Landroid/support/v4/app/u;->u:Z

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_29
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    if-eqz v0, :cond_36

    iput p2, p1, Landroid/support/v4/app/Fragment;->d:I

    move p2, v5

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->j()V

    :cond_2a
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_2b

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->o:Z

    :cond_2c
    :pswitch_6
    if-ge p2, v9, :cond_2e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->k()V

    :cond_2d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_2e

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :pswitch_7
    if-ge p2, v6, :cond_2f

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->j()V

    :cond_2f
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_28

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_30

    invoke-direct {p0, p1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;)V

    :cond_30
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v0, :cond_31

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0, v5, v3}, Landroid/support/v4/app/u;->a(IZ)V

    :cond_31
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_32

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v0, :cond_33

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->e()V

    :cond_33
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/support/v4/app/u;->g:I

    if-lez v0, :cond_3b

    iget-boolean v0, p0, Landroid/support/v4/app/u;->u:Z

    if-nez v0, :cond_3b

    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_34

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    iput p2, p1, Landroid/support/v4/app/Fragment;->d:I

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    new-instance v2, Landroid/support/v4/app/w;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/w;-><init>(Landroid/support/v4/app/u;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_34
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_35
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    goto/16 :goto_9

    :cond_36
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->D:Z

    if-nez v0, :cond_37

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->k()V

    :cond_37
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->G:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->G:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_38

    new-instance v0, Landroid/support/v4/app/aA;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aA;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    if-nez p5, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->D:Z

    if-nez v0, :cond_3a

    iget v0, p1, Landroid/support/v4/app/Fragment;->g:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    :cond_39
    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p1, Landroid/support/v4/app/Fragment;->g:I

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->m:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->n:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->o:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->p:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->q:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->r:Z

    iput v3, p1, Landroid/support/v4/app/Fragment;->s:I

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iput v3, p1, Landroid/support/v4/app/Fragment;->x:I

    iput v3, p1, Landroid/support/v4/app/Fragment;->y:I

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->A:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->B:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->D:Z

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->P:Z

    goto/16 :goto_1

    :cond_3a
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->w:Landroid/support/v4/app/Fragment;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    goto/16 :goto_1

    :cond_3b
    move-object v0, v7

    goto/16 :goto_a

    :cond_3c
    move-object v0, v7

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    :cond_0
    iget v0, p1, Landroid/support/v4/app/Fragment;->g:I

    if-gez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;)V

    :cond_6
    return-void
.end method

.method public final a(Landroid/support/v4/app/s;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iput-object p2, p0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    iput-object p3, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/u;->o()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/u;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mContainerId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mTag="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->b:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mIndex="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mWho="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->h:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mBackStackNesting="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->s:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAdded="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->m:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRemoving="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->n:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mResumed="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->o:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mFromLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->p:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mInLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->q:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHidden="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->A:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mDetached="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->B:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mMenuVisible="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->F:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mHasMenu="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mRetainInstance="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->C:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRetaining="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->D:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mUserVisibleHint="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->M:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    if-eqz v5, :cond_0

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentManager="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    if-eqz v5, :cond_1

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHost="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->w:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mParentFragment="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->w:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->i:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mArguments="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->i:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedFragmentState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedViewState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_6

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTarget="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " mTargetRequestCode="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->l:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    iget v5, v0, Landroid/support/v4/app/Fragment;->H:I

    if-eqz v5, :cond_7

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mNextAnim="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->H:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mContainer="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->K:Landroid/view/View;

    if-eqz v5, :cond_a

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mInnerView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    if-eqz v5, :cond_b

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAnimatingAway="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mStateAfterAnimating="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/app/Fragment;->d:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v5, :cond_c

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Loader Manager:"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3, p4}, Landroid/support/v4/app/N;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v5, :cond_d

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Child "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p2, p3, p4}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_f

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_11
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v1, v2, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_15

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/u;->g:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    if-eqz v0, :cond_16

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v4, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    return v3

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v5, :cond_7

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v5, p1, p2}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/lit8 v5, v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, Landroid/support/v4/app/Fragment;->g()V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/u;->q:Ljava/util/ArrayList;

    return v2

    :cond_7
    move v5, v4

    goto :goto_1
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v4, :cond_1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    move v2, v3

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->A:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/u;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    :cond_2
    invoke-static {}, Landroid/support/v4/app/Fragment;->a()V

    :cond_3
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->b(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/u;->d()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v4, :cond_1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    move v2, v3

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->A:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/u;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    :cond_2
    invoke-static {}, Landroid/support/v4/app/Fragment;->a()V

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/u;->o()V

    invoke-virtual {p0}, Landroid/support/v4/app/u;->d()Z

    iget-object v2, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/support/v4/app/b;->a(ZLandroid/support/v4/app/f;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/f;

    move v0, v1

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-nez v0, :cond_1

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->B:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->m:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/u;->o:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v3}, Landroid/support/v4/app/s;->h()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/support/v4/app/u;->v:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    if-eqz v5, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->N:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->a()Z

    move-result v0

    or-int/2addr v4, v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v1, p0, Landroid/support/v4/app/u;->n:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/u;->n:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/u;->n:[Ljava/lang/Runnable;

    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/u;->n:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-virtual {v1}, Landroid/support/v4/app/s;->h()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Landroid/support/v4/app/u;->o:Z

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_7

    iget-object v4, p0, Landroid/support/v4/app/u;->n:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    iget-object v4, p0, Landroid/support/v4/app/u;->n:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/u;->o:Z

    move v1, v0

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    iput-boolean v2, p0, Landroid/support/v4/app/u;->v:Z

    invoke-direct {p0}, Landroid/support/v4/app/u;->n()V

    :cond_9
    return v1
.end method

.method final e()Landroid/os/Parcelable;
    .locals 14

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/app/u;->d()Z

    sget-boolean v0, Landroid/support/v4/app/u;->l:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Landroid/support/v4/app/u;->j:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v1, v4

    :goto_1
    if-ge v5, v6, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_16

    iget v1, v0, Landroid/support/v4/app/Fragment;->g:I

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_3
    new-instance v8, Landroid/support/v4/app/FragmentState;

    invoke-direct {v8, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    aput-object v8, v7, v5

    iget v1, v0, Landroid/support/v4/app/Fragment;->b:I

    if-lez v1, :cond_e

    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    if-nez v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    iget-object v9, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v9}, Landroid/support/v4/app/u;->e()Landroid/os/Parcelable;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v10, "android:support:fragments"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    iput-object v2, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    :goto_2
    iget-object v9, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v9, :cond_6

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;)V

    :cond_6
    iget-object v9, v0, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    if-eqz v9, :cond_8

    if-nez v1, :cond_7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v9, "android:view_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8
    iget-boolean v9, v0, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v9, :cond_a

    if-nez v1, :cond_9

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_9
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v0, Landroid/support/v4/app/Fragment;->M:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->g:I

    if-gez v1, :cond_b

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_b
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    :cond_c
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    iget v11, v10, Landroid/support/v4/app/Fragment;->g:I

    if-gez v11, :cond_d

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_d
    iget v10, v10, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, Landroid/support/v4/app/Fragment;->l:I

    if-eqz v1, :cond_f

    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v0, v0, Landroid/support/v4/app/Fragment;->l:I

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_e
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->e:Landroid/os/Bundle;

    iput-object v0, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    :cond_f
    move v0, v3

    goto :goto_3

    :cond_10
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_12

    new-array v1, v5, [I

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->g:I

    aput v0, v1, v3

    aget v0, v1, v3

    if-gez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_11
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_12
    move-object v1, v2

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    new-array v2, v5, [Landroid/support/v4/app/BackStackState;

    move v3, v4

    :goto_5
    if-ge v3, v5, :cond_14

    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/b;)V

    aput-object v4, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_14
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v2, v0

    goto/16 :goto_0

    :cond_15
    move-object v1, v2

    goto/16 :goto_2

    :cond_16
    move v0, v1

    goto/16 :goto_3
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->B:Z

    if-eqz v0, :cond_2

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->B:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    iget v2, p0, Landroid/support/v4/app/u;->g:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/u;->j:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/u;->j:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/u;->j:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/u;->j:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final k()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u;->j:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u;->u:Z

    invoke-virtual {p0}, Landroid/support/v4/app/u;->d()Z

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/u;->a(IZ)V

    iput-object v1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iput-object v1, p0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    iput-object v1, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->v:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/u;->r:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    invoke-static {v1, v0}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
