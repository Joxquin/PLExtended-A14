.class public Lcom/android/quickstep/BinderTracker$BinderCallSite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activeTrace:Ljava/lang/String;

.field public final descriptor:Ljava/lang/String;

.field public final transactionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/BinderTracker$BinderCallSite;->activeTrace:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/quickstep/BinderTracker$BinderCallSite;->descriptor:Ljava/lang/String;

    iput p3, p0, Lcom/android/quickstep/BinderTracker$BinderCallSite;->transactionCode:I

    return-void
.end method
