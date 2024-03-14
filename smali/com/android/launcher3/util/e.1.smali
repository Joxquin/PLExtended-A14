.class public final synthetic Lcom/android/launcher3/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/util/DisplayController;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/e;->d:Lcom/android/launcher3/util/DisplayController;

    iput-object p2, p0, Lcom/android/launcher3/util/e;->e:Landroid/content/Context;

    iput p3, p0, Lcom/android/launcher3/util/e;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/e;->d:Lcom/android/launcher3/util/DisplayController;

    iget-object v1, p0, Lcom/android/launcher3/util/e;->e:Landroid/content/Context;

    iget p0, p0, Lcom/android/launcher3/util/e;->f:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/util/DisplayController;->b(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V

    return-void
.end method
