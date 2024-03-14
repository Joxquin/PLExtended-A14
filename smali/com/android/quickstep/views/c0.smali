.class public final synthetic Lcom/android/quickstep/views/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/c0;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onAnimationStarted(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/c0;->a:Ljava/util/function/Consumer;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->o(Ljava/util/function/Consumer;J)V

    return-void
.end method
