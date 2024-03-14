.class public final synthetic Lb1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/n;->a:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lb1/n;->a:Landroid/appwidget/AppWidgetHostView;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->h(Landroid/appwidget/AppWidgetHostView;Ljava/lang/Integer;)V

    return-void
.end method
