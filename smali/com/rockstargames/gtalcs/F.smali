.class final Lcom/rockstargames/gtalcs/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/gtalcs/MovieActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/MovieActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/F;->a:Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lcom/rockstargames/gtalcs/MovieActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movie touched "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/gtalcs/F;->a:Lcom/rockstargames/gtalcs/MovieActivity;

    iget-object v0, v0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/F;->a:Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
