.class public final synthetic LT0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/qsb/QsbWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/qsb/QsbWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/d;->d:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, LT0/d;->d:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method
