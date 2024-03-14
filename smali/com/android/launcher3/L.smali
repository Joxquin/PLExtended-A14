.class public final synthetic Lcom/android/launcher3/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/Launcher;

.field public final synthetic e:I

.field public final synthetic f:Lcom/android/launcher3/util/PendingRequestArgs;

.field public final synthetic g:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/L;->d:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/L;->e:I

    iput-object p3, p0, Lcom/android/launcher3/L;->f:Lcom/android/launcher3/util/PendingRequestArgs;

    iput-object p4, p0, Lcom/android/launcher3/L;->g:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/L;->d:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/L;->e:I

    iget-object v2, p0, Lcom/android/launcher3/L;->f:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object p0, p0, Lcom/android/launcher3/L;->g:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/Launcher;->f(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    return-void
.end method
