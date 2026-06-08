.class public final Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;
.super Ljava/lang/Object;
.source "DownloaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final approveCellular:Landroid/widget/LinearLayout;

.field public final buttonRow:Landroid/widget/LinearLayout;

.field public final cancelButton:Landroid/widget/Button;

.field public final downloaderDashboard:Landroid/widget/LinearLayout;

.field public final downloaderDashboardProgressBar:Landroid/widget/LinearLayout;

.field public final pauseButton:Landroid/widget/Button;

.field public final progressAsFraction:Landroid/widget/TextView;

.field public final progressAsPercentage:Landroid/widget/TextView;

.field public final progressAverageSpeed:Landroid/widget/TextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final progressTimeRemaining:Landroid/widget/TextView;

.field public final resumeOverCellular:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final statusText:Landroid/widget/TextView;

.field public final textPausedParagraph1:Landroid/widget/TextView;

.field public final textPausedParagraph2:Landroid/widget/TextView;

.field public final wifiSettingsButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 82
    iput-object p2, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->approveCellular:Landroid/widget/LinearLayout;

    .line 83
    iput-object p3, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->buttonRow:Landroid/widget/LinearLayout;

    .line 84
    iput-object p4, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->cancelButton:Landroid/widget/Button;

    .line 85
    iput-object p5, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->downloaderDashboard:Landroid/widget/LinearLayout;

    .line 86
    iput-object p6, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->downloaderDashboardProgressBar:Landroid/widget/LinearLayout;

    .line 87
    iput-object p7, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->pauseButton:Landroid/widget/Button;

    .line 88
    iput-object p8, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->progressAsFraction:Landroid/widget/TextView;

    .line 89
    iput-object p9, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->progressAsPercentage:Landroid/widget/TextView;

    .line 90
    iput-object p10, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->progressAverageSpeed:Landroid/widget/TextView;

    .line 91
    iput-object p11, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 92
    iput-object p12, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->progressTimeRemaining:Landroid/widget/TextView;

    .line 93
    iput-object p13, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->resumeOverCellular:Landroid/widget/Button;

    .line 94
    iput-object p14, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->statusText:Landroid/widget/TextView;

    .line 95
    iput-object p15, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->textPausedParagraph1:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 96
    iput-object p1, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->textPausedParagraph2:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 97
    iput-object p1, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->wifiSettingsButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 127
    sget v1, Lcom/rockstargames/gtalcs/R$id;->approveCellular:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lcom/rockstargames/gtalcs/R$id;->buttonRow:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 139
    sget v1, Lcom/rockstargames/gtalcs/R$id;->cancelButton:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Lcom/rockstargames/gtalcs/R$id;->downloaderDashboard:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Lcom/rockstargames/gtalcs/R$id;->downloaderDashboardProgressBar:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Lcom/rockstargames/gtalcs/R$id;->pauseButton:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Lcom/rockstargames/gtalcs/R$id;->progressAsFraction:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Lcom/rockstargames/gtalcs/R$id;->progressAsPercentage:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Lcom/rockstargames/gtalcs/R$id;->progressAverageSpeed:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Lcom/rockstargames/gtalcs/R$id;->progressBar:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ProgressBar;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Lcom/rockstargames/gtalcs/R$id;->progressTimeRemaining:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Lcom/rockstargames/gtalcs/R$id;->resumeOverCellular:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Lcom/rockstargames/gtalcs/R$id;->statusText:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 205
    sget v1, Lcom/rockstargames/gtalcs/R$id;->textPausedParagraph1:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 211
    sget v1, Lcom/rockstargames/gtalcs/R$id;->textPausedParagraph2:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 217
    sget v1, Lcom/rockstargames/gtalcs/R$id;->wifiSettingsButton:I

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/Button;

    if-eqz v20, :cond_0

    .line 223
    new-instance v3, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    return-object v3

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;
    .locals 2

    .line 114
    sget v0, Lcom/rockstargames/gtalcs/R$layout;->downloader:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->bind(Landroid/view/View;)Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/rockstargames/gtalcs/databinding/DownloaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
