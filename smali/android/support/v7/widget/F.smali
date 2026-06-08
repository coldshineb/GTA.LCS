.class final Landroid/support/v7/widget/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/D;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/D;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/F;->a:Landroid/support/v7/widget/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/D;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/F;-><init>(Landroid/support/v7/widget/D;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/F;->a:Landroid/support/v7/widget/D;

    invoke-static {v0}, Landroid/support/v7/widget/D;->b(Landroid/support/v7/widget/D;)V

    return-void
.end method
