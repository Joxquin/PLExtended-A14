.class public final Lb0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/slice/SliceSpec;

.field public static final b:Landroidx/slice/SliceSpec;

.field public static final c:Landroidx/slice/SliceSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb0/g;->a:Landroidx/slice/SliceSpec;

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.slice.LIST"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb0/g;->b:Landroidx/slice/SliceSpec;

    new-instance v0, Landroidx/slice/SliceSpec;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb0/g;->c:Landroidx/slice/SliceSpec;

    return-void
.end method
