.class public final synthetic Lcom/android/quickstep/util/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/util/Z;->a:I

    iput-object p2, p0, Lcom/android/quickstep/util/Z;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/Z;->a:I

    iget-object p0, p0, Lcom/android/quickstep/util/Z;->b:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->b(ILjava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method
