#include <gtest/gtest.h>

#include "foo1.h"
#include "foo2.h"
#include "foo3.h"

TEST(Folder1_Test, foo1)
{
    EXPECT_EQ(0, foo1());
}

TEST(Folder1_Test, foo2)
{
    EXPECT_EQ(1, foo2());
}

TEST(Folder1_Test, foo3)
{
    EXPECT_EQ(2, foo3());
}