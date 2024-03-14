.class public final synthetic Lcom/android/quickstep/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/util/TraceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/TraceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z;->d:Lcom/android/launcher3/util/TraceHelper;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/z;->d:Lcom/android/launcher3/util/TraceHelper;

    invoke-static {p0}, Lcom/android/quickstep/BinderTracker;->a(Lcom/android/launcher3/util/TraceHelper;)V

    return-void
.end method
