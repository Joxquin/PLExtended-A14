.class public final synthetic Lb1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lb1/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lb1/w;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->a(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    return-void

    :goto_0
    check-cast p1, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-interface {p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
