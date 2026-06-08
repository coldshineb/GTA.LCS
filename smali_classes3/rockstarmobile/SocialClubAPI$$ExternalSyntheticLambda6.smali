.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedList;

.field public final synthetic f$1:Lrockstarmobile/SocialClubAPI$StatusCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;Lrockstarmobile/SocialClubAPI$StatusCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;->f$0:Ljava/util/LinkedList;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;->f$1:Lrockstarmobile/SocialClubAPI$StatusCallback;

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;->f$0:Ljava/util/LinkedList;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda6;->f$1:Lrockstarmobile/SocialClubAPI$StatusCallback;

    invoke-static {v0, v1}, Lrockstarmobile/SocialClubAPI;->lambda$refresh$15(Ljava/util/LinkedList;Lrockstarmobile/SocialClubAPI$StatusCallback;)V

    return-void
.end method
