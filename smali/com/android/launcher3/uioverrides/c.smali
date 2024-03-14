.class public final synthetic Lcom/android/launcher3/uioverrides/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/uioverrides/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/uioverrides/c;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    check-cast p2, Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void

    :goto_0
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->onViewDataChanged(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
