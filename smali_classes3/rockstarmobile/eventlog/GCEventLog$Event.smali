.class public Lrockstarmobile/eventlog/GCEventLog$Event;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/eventlog/GCEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public final args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final id:J

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lrockstarmobile/eventlog/GCEventLog$Event;->id:J

    .line 3
    iput-object p3, p0, Lrockstarmobile/eventlog/GCEventLog$Event;->name:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lrockstarmobile/eventlog/GCEventLog$Event;->args:Ljava/util/Map;

    return-void
.end method
