.class public final synthetic Lcom/android/quickstep/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/B;->d:Ljava/lang/String;

    iput p2, p0, Lcom/android/quickstep/B;->e:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/B;->d:Ljava/lang/String;

    iget p0, p0, Lcom/android/quickstep/B;->e:I

    invoke-static {p0, v0}, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;->f(ILjava/lang/String;)V

    return-void
.end method
