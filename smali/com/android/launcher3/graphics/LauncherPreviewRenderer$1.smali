.class final Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;
.super Landroid/widget/TextClock;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-direct {p0, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-static {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->c(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
