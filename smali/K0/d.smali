.class public final synthetic LK0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/d;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    return-void
.end method


# virtual methods
.method public final getScaleFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, LK0/d;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->a(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
