.class public final synthetic LK0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/a;->d:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LK0/a;->d:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->destroy()V

    return-void
.end method
