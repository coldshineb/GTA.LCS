.class public final synthetic Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/util/PersistableLinkedList;

.field public final synthetic f$1:Lio/sentry/ReplayRecording;

.field public final synthetic f$2:Lio/sentry/android/replay/ReplayCache;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/util/PersistableLinkedList;Lio/sentry/ReplayRecording;Lio/sentry/android/replay/ReplayCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/util/PersistableLinkedList;

    iput-object p2, p0, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ReplayRecording;

    iput-object p3, p0, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;->f$2:Lio/sentry/android/replay/ReplayCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/util/PersistableLinkedList;

    iget-object v1, p0, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ReplayRecording;

    iget-object v2, p0, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;->f$2:Lio/sentry/android/replay/ReplayCache;

    invoke-static {v0, v1, v2}, Lio/sentry/android/replay/util/PersistableLinkedList;->$r8$lambda$SXE8G42vg3XtXD7RMWXfz2AJ4Pg(Lio/sentry/android/replay/util/PersistableLinkedList;Lio/sentry/ReplayRecording;Lio/sentry/android/replay/ReplayCache;)V

    return-void
.end method
