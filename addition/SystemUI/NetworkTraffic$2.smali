.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    if-eqz v0, :cond_19

    .line 321
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateViews()V

    goto :goto_3a

    :cond_19
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 323
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateViews()V

    goto :goto_3a

    :cond_2a
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 325
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateViews()V

    :cond_3a
    :goto_3a
    return-void
.end method
