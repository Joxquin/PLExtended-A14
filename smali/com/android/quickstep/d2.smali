.class public final synthetic Lcom/android/quickstep/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/d2;->a:I

    iput p2, p0, Lcom/android/quickstep/d2;->b:I

    iput p3, p0, Lcom/android/quickstep/d2;->c:I

    iput-boolean p4, p0, Lcom/android/quickstep/d2;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/quickstep/d2;->a:I

    iget v1, p0, Lcom/android/quickstep/d2;->b:I

    iget v2, p0, Lcom/android/quickstep/d2;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/d2;->d:Z

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->y(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method
