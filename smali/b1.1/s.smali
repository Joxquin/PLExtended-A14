.class public final synthetic Lb1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

.field public final synthetic f:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;I)V
    .locals 0

    iput p3, p0, Lb1/s;->d:I

    iput-object p1, p0, Lb1/s;->e:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    iput-object p2, p0, Lb1/s;->f:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lb1/s;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lb1/s;->e:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    iget-object p0, p0, Lb1/s;->f:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->b(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lb1/s;->e:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    iget-object p0, p0, Lb1/s;->f:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->c(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
