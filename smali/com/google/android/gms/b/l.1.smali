.class public final Lcom/google/android/gms/b/l;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/16 v8, 0x12c

    const/high16 v2, 0x800000

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "gads:sdk_core_experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_core_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:request_builder:singleton_webview"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:request_builder:singleton_webview_experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_use_dynamic_module"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_use_dynamic_module_experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_crash_report_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/l;->a:Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/l;->b:Lcom/google/android/gms/b/d;

    const-string v0, "gads:block_autoclicks"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:block_autoclicks_experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:prefetch:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->b(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:spam_app_context:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:spam_app_context:enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_cache:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_cache:limit_count"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_cache:limit_space"

    invoke-static {v0, v2}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_exo_cache:buffer_size"

    invoke-static {v0, v2}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_cache:limit_time_sec"

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_cache:notify_interval_millis"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video_stream_cache:connect_timeout_millis"

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video:metric_reporting_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video:metric_frame_hash_times"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:video:metric_frame_hash_time_leniency"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:spam_ad_id_decorator:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->b(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:spam_ad_id_decorator:enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:looper_for_gms_client:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->b(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:looper_for_gms_client:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sw_ad_request_service:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sw_dynamite:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gad:mraid:url_banner"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js"

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gad:mraid:url_expanded_banner"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js"

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gad:mraid:url_interstitial"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js"

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:enabled_sdk_csi"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_csi_server"

    const-string v1, "https://csi.gstatic.com/csi"

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sdk_csi_write_to_file"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:enable_content_fetching"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:content_length_weight"

    invoke-static {v0, v5}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:content_age_weight"

    invoke-static {v0, v5}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:min_content_len"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:fingerprint_number"

    invoke-static {v0, v6}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:sleep_sec"

    invoke-static {v0, v6}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gad:app_index_enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:kitkat_interstitial_workaround:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:kitkat_interstitial_workaround:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:interstitial_follow_url"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:interstitial_follow_url:register_click"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:interstitial_follow_url:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:analytics_enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:ad_key_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:webview_cache_version"

    invoke-static {v0, v4}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;I)Lcom/google/android/gms/b/d;

    const-string v0, "gads:pan:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/b/d;->b(Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:native:engine_url"

    const-string v1, "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html"

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:ad_manager_creator:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:log:verbose_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/l;->c:Lcom/google/android/gms/b/d;

    const-string v0, "gads:device_info_caching:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:device_info_caching_expiry_ms:expiry"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:gen204_signals:enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:webview:error_reporting_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:adid_reporting:enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:request_pkg:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:gmsg:disable_back_button:enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:network:cache_prediction_duration_s"

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:mediation:dynamite_first"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:ad_loader:timeout_ms"

    const-wide/32 v2, 0xea60

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:rendering:timeout_ms"

    const-wide/32 v2, 0xea60

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;J)Lcom/google/android/gms/b/d;

    const-string v0, "gads:adshield:enable_adshield_instrumentation"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:adid_notification:first_party_check:enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    const-string v0, "gads:support_screen_shot"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/d;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/b;->d()Lcom/google/android/gms/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/i;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
