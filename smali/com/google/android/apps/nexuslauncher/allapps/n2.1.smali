.class public final Lcom/google/android/apps/nexuslauncher/allapps/n2;
.super Landroid/appwidget/AppWidgetHostView;
.source "SourceFile"


# virtual methods
.method public final updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    return-void
.end method
