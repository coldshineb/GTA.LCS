.class final Landroid/support/v7/widget/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/G;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/z;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/G;-><init>(Landroid/support/v7/widget/z;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/G;->a:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->e()V

    return-void
.end method
