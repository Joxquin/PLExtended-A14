.class public final synthetic Lcom/android/launcher3/util/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/ScreenOnTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ScreenOnTracker;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/util/B;->a:I

    iput-object p1, p0, Lcom/android/launcher3/util/B;->b:Lcom/android/launcher3/util/ScreenOnTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/B;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/util/B;->b:Lcom/android/launcher3/util/ScreenOnTracker;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->b(Lcom/android/launcher3/util/ScreenOnTracker;Landroid/content/Intent;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/util/B;->b:Lcom/android/launcher3/util/ScreenOnTracker;

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->a(Lcom/android/launcher3/util/ScreenOnTracker;Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
