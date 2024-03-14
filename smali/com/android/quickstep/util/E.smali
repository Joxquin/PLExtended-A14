.class public final synthetic Lcom/android/quickstep/util/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/RecentsOrientedState;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/RecentsOrientedState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/E;->d:Lcom/android/quickstep/util/RecentsOrientedState;

    iput-boolean p2, p0, Lcom/android/quickstep/util/E;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/E;->d:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-boolean p0, p0, Lcom/android/quickstep/util/E;->e:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/util/RecentsOrientedState;->b(Lcom/android/quickstep/util/RecentsOrientedState;Z)V

    return-void
.end method
