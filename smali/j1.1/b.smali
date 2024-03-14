.class public final synthetic Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    check-cast p2, Lcom/android/launcher3/model/WidgetItem;

    iget-object p0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz p0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v0, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    if-ne v0, p0, :cond_3

    iget p0, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget p1, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    if-le p0, p1, :cond_4

    goto :goto_0

    :cond_3
    if-le v0, p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, -0x1

    :goto_2
    return p0
.end method
