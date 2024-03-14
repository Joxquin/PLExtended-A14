.class public final synthetic Lcom/android/quickstep/views/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/x;->d:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/x;->e:I

    iput p3, p0, Lcom/android/quickstep/views/x;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/x;->d:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/x;->e:I

    iget p0, p0, Lcom/android/quickstep/views/x;->f:I

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView;->D(Lcom/android/quickstep/views/RecentsView;II)V

    return-void
.end method
