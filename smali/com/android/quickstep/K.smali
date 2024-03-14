.class public final synthetic Lcom/android/quickstep/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/ImageActionsApi;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/content/Intent;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/K;->d:Lcom/android/quickstep/ImageActionsApi;

    iput-object p2, p0, Lcom/android/quickstep/K;->e:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/quickstep/K;->f:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/quickstep/K;->g:Z

    iput-object p5, p0, Lcom/android/quickstep/K;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/K;->d:Lcom/android/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/android/quickstep/K;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/K;->f:Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/quickstep/K;->g:Z

    iget-object p0, p0, Lcom/android/quickstep/K;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/ImageActionsApi;->b(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    return-void
.end method
